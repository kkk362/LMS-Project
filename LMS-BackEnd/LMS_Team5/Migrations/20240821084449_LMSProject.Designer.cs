﻿// <auto-generated />
using System;
using LMS.DataAccessLayer;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace LMS.Migrations
{
    [DbContext(typeof(DataAccessLayerDB))]
    [Migration("20240821084449_LMSProject")]
    partial class LMSProject
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.8")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            MySqlModelBuilderExtensions.AutoIncrementColumns(modelBuilder);

            modelBuilder.Entity("LMS.Model.EmployeeDB", b =>
                {
                    b.Property<int>("Emp_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    MySqlPropertyBuilderExtensions.UseMySqlIdentityColumn(b.Property<int>("Emp_Id"));

                    b.Property<string>("Emp_Dept")
                        .HasColumnType("longtext");

                    b.Property<DateTime>("Emp_Doj")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("Emp_Email")
                        .HasColumnType("longtext");

                    b.Property<int>("Emp_LeaveBal")
                        .HasColumnType("int");

                    b.Property<string>("Emp_Name")
                        .HasColumnType("longtext");

                    b.Property<long>("Emp_Phone")
                        .HasColumnType("bigint");

                    b.Property<int>("Man_Id")
                        .HasColumnType("int");

                    b.Property<string>("Password")
                        .HasColumnType("longtext");

                    b.HasKey("Emp_Id");

                    b.HasIndex("Man_Id");

                    b.ToTable("employees");
                });

            modelBuilder.Entity("LMS.Model.LeaveDetailsDB", b =>
                {
                    b.Property<int>("Leave_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    MySqlPropertyBuilderExtensions.UseMySqlIdentityColumn(b.Property<int>("Leave_Id"));

                    b.Property<DateTime>("Applied_On")
                        .HasColumnType("datetime(6)");

                    b.Property<int>("Emp_Id")
                        .HasColumnType("int");

                    b.Property<DateTime>("End_Date")
                        .HasColumnType("datetime(6)");

                    b.Property<string>("Leave_Reason")
                        .HasColumnType("longtext");

                    b.Property<string>("Leave_Status")
                        .HasColumnType("longtext");

                    b.Property<string>("Leave_Type")
                        .HasColumnType("longtext");

                    b.Property<int>("Man_Id")
                        .HasColumnType("int");

                    b.Property<string>("Manager_Comment")
                        .HasColumnType("longtext");

                    b.Property<int>("No_OfDays")
                        .HasColumnType("int");

                    b.Property<DateTime>("Start_Date")
                        .HasColumnType("datetime(6)");

                    b.HasKey("Leave_Id");

                    b.HasIndex("Emp_Id");

                    b.HasIndex("Man_Id");

                    b.ToTable("leaveDetails");
                });

            modelBuilder.Entity("LMS.Model.ManagerDB", b =>
                {
                    b.Property<int>("Man_Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    MySqlPropertyBuilderExtensions.UseMySqlIdentityColumn(b.Property<int>("Man_Id"));

                    b.Property<string>("Man_Email")
                        .HasColumnType("longtext");

                    b.Property<string>("Man_Name")
                        .HasColumnType("longtext");

                    b.Property<long>("Man_Phone")
                        .HasColumnType("bigint");

                    b.Property<string>("Password")
                        .HasColumnType("longtext");

                    b.HasKey("Man_Id");

                    b.ToTable("managers");
                });

            modelBuilder.Entity("LMS.Model.EmployeeDB", b =>
                {
                    b.HasOne("LMS.Model.ManagerDB", "manager")
                        .WithMany()
                        .HasForeignKey("Man_Id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("manager");
                });

            modelBuilder.Entity("LMS.Model.LeaveDetailsDB", b =>
                {
                    b.HasOne("LMS.Model.EmployeeDB", "EmployeeDB")
                        .WithMany()
                        .HasForeignKey("Emp_Id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("LMS.Model.ManagerDB", "manager")
                        .WithMany()
                        .HasForeignKey("Man_Id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("EmployeeDB");

                    b.Navigation("manager");
                });
#pragma warning restore 612, 618
        }
    }
}
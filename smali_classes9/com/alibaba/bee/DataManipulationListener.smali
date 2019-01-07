.class public abstract Lcom/alibaba/bee/DataManipulationListener;
.super Ljava/lang/Object;
.source "DataManipulationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 39
    return-void
.end method

.method public beforeProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 23
    return-void
.end method

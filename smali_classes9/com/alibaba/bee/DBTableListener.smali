.class public abstract Lcom/alibaba/bee/DBTableListener;
.super Ljava/lang/Object;
.source "DBTableListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 20
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method

.method public onDrop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

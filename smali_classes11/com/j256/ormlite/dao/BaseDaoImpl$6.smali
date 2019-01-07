.class final Lcom/j256/ormlite/dao/BaseDaoImpl$6;
.super Lcom/j256/ormlite/dao/BaseDaoImpl;
.source "BaseDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/j256/ormlite/dao/BaseDaoImpl;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/dao/BaseDaoImpl",
        "<TT;TID;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "x0"    # Lcom/j256/ormlite/support/ConnectionSource;

    .prologue
    .line 1055
    .local p2, "x1":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method


# virtual methods
.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1055
    invoke-super {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->c()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

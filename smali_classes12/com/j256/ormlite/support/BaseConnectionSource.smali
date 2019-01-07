.class public abstract Lcom/j256/ormlite/support/BaseConnectionSource;
.super Ljava/lang/Object;
.source "BaseConnectionSource.java"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    .line 123
    return-void
.end method


# virtual methods
.method public final c()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    iget-object v1, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 19
    .local v0, "currentSaved":Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
    if-nez v0, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 22
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0
.end method

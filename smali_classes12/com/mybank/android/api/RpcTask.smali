.class public Lcom/mybank/android/api/RpcTask;
.super Ljava/lang/Object;
.source "RpcTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/api/RpcTask$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mybank/android/api/RpcTask;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/api/RpcTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mybank/android/api/RpcTask;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mybank/android/api/RpcTask;->a:Landroid/content/Context;

    return-object v0
.end method

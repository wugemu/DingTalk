.class public Lcom/mybank/android/api/LoginTask;
.super Ljava/lang/Object;
.source "LoginTask.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mybank/android/api/LoginTask;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

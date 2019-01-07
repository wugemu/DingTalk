.class public Lcom/mybank/android/api/BankCardTask;
.super Ljava/lang/Object;
.source "BankCardTask.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mybank/android/api/BankCardTask;->a:Landroid/content/Context;

    .line 26
    return-void
.end method

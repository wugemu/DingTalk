.class public Landroid/support/customtabs/PostMessageService;
.super Landroid/app/Service;
.source "PostMessageService.java"


# instance fields
.field private a:Ln$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Landroid/support/customtabs/PostMessageService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/PostMessageService$1;-><init>(Landroid/support/customtabs/PostMessageService;)V

    iput-object v0, p0, Landroid/support/customtabs/PostMessageService;->a:Ln$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/customtabs/PostMessageService;->a:Ln$a;

    return-object v0
.end method

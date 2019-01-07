.class final Lacp$12$2;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacp$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp$12;


# direct methods
.method constructor <init>(Lacp$12;)V
    .locals 0
    .param p1, "this$1"    # Lacp$12;

    .prologue
    .line 239
    iput-object p1, p0, Lacp$12$2;->a:Lacp$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 242
    const-string/jumbo v0, "pref_key_dingtalk_org_destribute_check"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

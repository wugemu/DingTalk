.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$2;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/BokuiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lemf;->a()Lemf;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lemf;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 112
    return-void
.end method

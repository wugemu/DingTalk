.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$5;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;
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
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    packed-switch p2, :pswitch_data_0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 174
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->a(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->b:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->b(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

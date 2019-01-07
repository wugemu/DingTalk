.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->c(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2690
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2691
    const-string/jumbo v0, "fragment_key"

    const-string/jumbo v1, "ExternalContactFragmentser"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2692
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_user_external_header_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2693
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$70;->b:Landroid/app/Activity;

    sget v2, Lezg$l;->dt_user_external_header_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2694
    return-object p1
.end method

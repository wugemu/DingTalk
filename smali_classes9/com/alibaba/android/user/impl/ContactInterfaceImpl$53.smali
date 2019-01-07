.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JJLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JJLjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->b:J

    iput-object p6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->c:Ljava/lang/String;

    iput p7, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->d:I

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
    .line 368
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 369
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    const-string/jumbo v0, "staff_id"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string/jumbo v0, "fr_source"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$53;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    return-object p1
.end method

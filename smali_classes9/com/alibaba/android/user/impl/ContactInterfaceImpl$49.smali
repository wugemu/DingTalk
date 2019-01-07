.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->e:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->a:J

    iput-object p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->d:Z

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
    .line 342
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 343
    const-string/jumbo v0, "user_mobile"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v0, "from_name_card"

    iget-boolean v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$49;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    return-object p1
.end method

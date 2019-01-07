.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->a:J

    iput-boolean p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->b:Z

    iput-boolean p5, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1450
    const-string/jumbo v0, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1451
    const-string/jumbo v0, "intent_key_only_show_my_group"

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1452
    const-string/jumbo v0, "intent_key_allow_create_group"

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1453
    return-object p1
.end method

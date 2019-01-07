.class final Lcul$3;
.super Ljava/lang/Object;
.source "ConversationLinksAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcul;


# direct methods
.method constructor <init>(Lcul;J)V
    .locals 0
    .param p1, "this$0"    # Lcul;

    .prologue
    .line 192
    iput-object p1, p0, Lcul$3;->b:Lcul;

    iput-wide p2, p0, Lcul$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcul$3;->b:Lcul;

    invoke-static {v1}, Lcul;->b(Lcul;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcul$3;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 196
    return-void
.end method

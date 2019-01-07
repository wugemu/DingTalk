.class final Lcwo$2;
.super Ljava/lang/Object;
.source "NewDingCardViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/DingCardView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcwo;


# direct methods
.method constructor <init>(Lcwo;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcwo;

    .prologue
    .line 122
    iput-object p1, p0, Lcwo$2;->b:Lcwo;

    iput-object p2, p0, Lcwo$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v0, p0, Lcwo$2;->b:Lcwo;

    iget-object v0, v0, Lcwo;->P:Lcts$b;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcwo$2;->b:Lcwo;

    iget-object v0, v0, Lcwo;->P:Lcts$b;

    iget-object v1, p0, Lcwo$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcts$b;->e(Lcom/alibaba/wukong/im/Message;)V

    .line 128
    :cond_0
    return-void
.end method

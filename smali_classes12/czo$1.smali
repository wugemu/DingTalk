.class final Lczo$1;
.super Ljava/lang/Object;
.source "UserSpaceLinkViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lczo;


# direct methods
.method constructor <init>(Lczo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lczo;

    .prologue
    .line 77
    iput-object p1, p0, Lczo$1;->c:Lczo;

    iput-object p2, p0, Lczo$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lczo$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lczo$1;->c:Lczo;

    iget-object v1, p0, Lczo$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lczo$1;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lczo;->a(Lczo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.class final Lcxr$1;
.super Lcxr$a;
.source "SystemMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxr;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

.field final synthetic e:Lcxr;


# direct methods
.method constructor <init>(Lcxr;ILandroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;)V
    .locals 0
    .param p1, "this$0"    # Lcxr;
    .param p2, "color"    # I

    .prologue
    .line 154
    iput-object p1, p0, Lcxr$1;->e:Lcxr;

    iput-object p3, p0, Lcxr$1;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcxr$1;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p5, p0, Lcxr$1;->c:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    iput-object p6, p0, Lcxr$1;->d:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {p0, p1, p2}, Lcxr$a;-><init>(Lcxr;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lcxr$1;->e:Lcxr;

    iget-object v1, p0, Lcxr$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcxr$1;->b:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lcxr$1;->c:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    iget-object v4, p0, Lcxr$1;->d:Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-static {v0, v1, v2, v3, v4}, Lcxr;->a(Lcxr;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;)V

    .line 158
    return-void
.end method

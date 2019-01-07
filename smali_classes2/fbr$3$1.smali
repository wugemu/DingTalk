.class final Lfbr$3$1;
.super Ljava/lang/Object;
.source "ChannelApplyAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbr$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbr$3;


# direct methods
.method constructor <init>(Lfbr$3;)V
    .locals 0
    .param p1, "this$1"    # Lfbr$3;

    .prologue
    .line 180
    iput-object p1, p0, Lfbr$3$1;->a:Lfbr$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 183
    const-class v2, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 184
    .local v1, "service":Lcom/alibaba/android/user/idl/services/ChannelIService;
    new-instance v0, Lfbr$3$1$1;

    invoke-direct {v0, p0}, Lfbr$3$1$1;-><init>(Lfbr$3$1;)V

    .line 205
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v2, p0, Lfbr$3$1;->a:Lfbr$3;

    iget-object v2, v2, Lfbr$3;->b:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->id:J

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ChannelIService;->removeChannelApply(JLiyv;)V

    .line 206
    return-void
.end method

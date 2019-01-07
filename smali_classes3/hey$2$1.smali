.class final Lhey$2$1;
.super Ljava/lang/Object;
.source "MiniAppListItemViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhey$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhey$2;


# direct methods
.method constructor <init>(Lhey$2;Z)V
    .locals 0
    .param p1, "this$1"    # Lhey$2;

    .prologue
    .line 171
    iput-object p1, p0, Lhey$2$1;->b:Lhey$2;

    iput-boolean p2, p0, Lhey$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    iget-object v3, v3, Lhey;->d:Lhep;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    iget v3, v3, Lhey;->b:I

    if-ltz v3, :cond_1

    .line 175
    iget-boolean v3, p0, Lhey$2$1;->a:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 176
    .local v1, "newStickyStatus":Z
    :goto_0
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    iget-object v4, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v4, v4, Lhey$2;->b:Lhey;

    iget v4, v4, Lhey;->b:I

    iput v4, v3, Lhey;->c:I

    .line 177
    if-eqz v1, :cond_3

    .line 178
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    iget-object v3, v3, Lhey;->d:Lhep;

    iget-object v4, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v4, v4, Lhey$2;->b:Lhey;

    iget v4, v4, Lhey;->b:I

    iget-object v5, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v5, v5, Lhey$2;->b:Lhey;

    iget v5, v5, Lhey;->c:I

    const-string/jumbo v6, "mini_action_type_stick"

    invoke-interface {v3, v4, v5, v6}, Lhep;->a(IILjava/lang/String;)V

    .line 186
    :goto_1
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    invoke-static {v3}, Lhey;->d(Lhey;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 187
    if-eqz v1, :cond_4

    .line 188
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    invoke-static {v3}, Lhey;->d(Lhey;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 193
    :cond_0
    :goto_2
    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 194
    .local v0, "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    iget-object v2, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v2, v2, Lhey$2;->a:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 195
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getMiniAppId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhey$2$1$1;

    invoke-direct {v3, p0}, Lhey$2$1$1;-><init>(Lhey$2$1;)V

    .line 194
    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->makeTopInMyMiniAppList(Ljava/lang/String;ZLiyv;)V

    .line 209
    .end local v0    # "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    .end local v1    # "newStickyStatus":Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 175
    goto :goto_0

    .line 182
    .restart local v1    # "newStickyStatus":Z
    :cond_3
    iget-object v3, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v3, v3, Lhey$2;->b:Lhey;

    iget-object v3, v3, Lhey;->d:Lhep;

    iget-object v4, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v4, v4, Lhey$2;->b:Lhey;

    iget v4, v4, Lhey;->b:I

    iget-object v5, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v5, v5, Lhey$2;->b:Lhey;

    iget v5, v5, Lhey;->c:I

    const-string/jumbo v6, "mini_action_type_cancel_stick"

    invoke-interface {v3, v4, v5, v6}, Lhep;->a(IILjava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v2, p0, Lhey$2$1;->b:Lhey$2;

    iget-object v2, v2, Lhey$2;->b:Lhey;

    invoke-static {v2}, Lhey;->d(Lhey;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_2
.end method

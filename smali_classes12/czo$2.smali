.class final Lczo$2;
.super Ljava/lang/Object;
.source "UserSpaceLinkViewHolder.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lczo;


# direct methods
.method constructor <init>(Lczo;)V
    .locals 0
    .param p1, "this$0"    # Lczo;

    .prologue
    .line 103
    iput-object p1, p0, Lczo$2;->a:Lczo;

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
    .line 106
    iget-object v1, p0, Lczo$2;->a:Lczo;

    iget-object v1, v1, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lczo$2;->a:Lczo;

    iget-object v1, v1, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lczo$2;->a:Lczo;

    iget-object v1, v1, Lczo;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .local v0, "tag":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 111
    iget-object v1, p0, Lczo$2;->a:Lczo;

    invoke-static {v1}, Lczo;->a(Lczo;)V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lczo$2;->a:Lczo;

    invoke-static {v1}, Lczo;->b(Lczo;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lczo$2;->a:Lczo;

    iget-object v0, v0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lczo$2;->a:Lczo;

    iget-object v0, v0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lczo$2;->a:Lczo;

    iget-object v1, p0, Lczo$2;->a:Lczo;

    iget-object v1, v1, Lczo;->X:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lczo$2;->a:Lczo;

    iget-object v2, v2, Lczo;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lczo;->a(Lczo;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lczo$2;->a:Lczo;

    iget-object v0, v0, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    const-string/jumbo v1, "file"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lczo$2;->a:Lczo;

    iget-object v1, v1, Lczo;->d:Landroid/app/Activity;

    iget-object v2, p0, Lczo$2;->a:Lczo;

    iget-object v2, v2, Lczo;->Y:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    goto :goto_0
.end method

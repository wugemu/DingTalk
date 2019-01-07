.class public final Lcxo;
.super Ljava/lang/Object;
.source "SpaceFileUploadDelegate.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alibaba/wukong/im/Message;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

.field d:Landroid/widget/ImageView;

.field private final e:I

.field private f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lebl$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "uploadProgressBar"    # Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "imgCancel"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcxo;->e:I

    .line 54
    new-instance v0, Lcxo$1;

    invoke-direct {v0, p0}, Lcxo$1;-><init>(Lcxo;)V

    iput-object v0, p0, Lcxo;->g:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v0, Lcxo$2;

    invoke-direct {v0, p0}, Lcxo$2;-><init>(Lcxo;)V

    iput-object v0, p0, Lcxo;->h:Lcma;

    .line 38
    iput-object p1, p0, Lcxo;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 40
    iput-object p3, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 41
    iput-object p4, p0, Lcxo;->d:Landroid/widget/ImageView;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxo;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcxo;->a(ZI)V

    .line 124
    iget-object v0, p0, Lcxo;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcxo;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcxo;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcxo;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->N(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcxo$3;->a:[I

    iget-object v1, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Message$MessageStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-virtual {p0, v2, v2}, Lcxo;->a(ZI)V

    goto :goto_0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->sendProgress()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcxo;->a(ZI)V

    .line 138
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v1, p0, Lcxo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v4, p0, Lcxo;->h:Lcma;

    invoke-virtual {v0, v1, v2, v3, v4}, Lebl;->a(IJLcma;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcxo;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v0}, Ldkc;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcxo;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->sendProgress()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcxo;->a(ZI)V

    .line 144
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v1, p0, Lcxo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v4, p0, Lcxo;->h:Lcma;

    invoke-virtual {v0, v1, v2, v3, v4}, Lebl;->a(IJLcma;)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 45
    iput-object p1, p0, Lcxo;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 47
    iput-object p3, p0, Lcxo;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 49
    iget-object v0, p0, Lcxo;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p2}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    iput-object v0, p0, Lcxo;->f:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 52
    :cond_0
    return-void
.end method

.method a(ZI)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "progress"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x64

    .line 154
    iget-object v0, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    if-lt p2, v2, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a(II)V

    goto :goto_0
.end method

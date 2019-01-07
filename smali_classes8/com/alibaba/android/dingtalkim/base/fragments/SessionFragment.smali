.class public abstract Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SessionFragment.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

.field public b:Z

.field protected c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->c:Z

    return-void
.end method


# virtual methods
.method public F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILdbz;)V
    .locals 0
    .param p1, "res"    # I
    .param p2, "listener"    # Ldbz;

    .prologue
    .line 71
    return-void
.end method

.method public a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 122
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V
    .locals 0
    .param p1, "sessionFilter"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 75
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "efficientModeOpen"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->c:Z

    .line 63
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

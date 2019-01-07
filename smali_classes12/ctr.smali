.class public abstract Lctr;
.super Lctv;
.source "AbsBottomOperationMsgHolder.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 20
    const-string/jumbo v0, "ChatMsgActivity"

    iput-object v0, p0, Lctr;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lctr;->r:Landroid/view/View;

    sget v1, Lctk$f;->operation_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    iput-object v0, p0, Lctr;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .line 29
    return-void
.end method

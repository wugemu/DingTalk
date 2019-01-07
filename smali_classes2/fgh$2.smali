.class final Lfgh$2;
.super Ljava/lang/Object;
.source "ConcernListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgh;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:I

.field final synthetic c:Lfgh;


# direct methods
.method constructor <init>(Lfgh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgh;

    .prologue
    .line 107
    iput-object p1, p0, Lfgh$2;->c:Lfgh;

    iput-object p2, p0, Lfgh$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput p3, p0, Lfgh$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lfgh$2;->c:Lfgh;

    iget-object v1, p0, Lfgh$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget v1, p0, Lfgh$2;->b:I

    invoke-static {v0, v2, v3, v1}, Lfgh;->a(Lfgh;JI)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

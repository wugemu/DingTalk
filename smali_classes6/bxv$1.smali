.class final Lbxv$1;
.super Ljava/lang/Object;
.source "LinkMicCallListAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxv;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbxv$a;

.field final synthetic c:Lbxv;


# direct methods
.method constructor <init>(Lbxv;JLbxv$a;)V
    .locals 0
    .param p1, "this$0"    # Lbxv;

    .prologue
    .line 84
    iput-object p1, p0, Lbxv$1;->c:Lbxv;

    iput-wide p2, p0, Lbxv$1;->a:J

    iput-object p4, p0, Lbxv$1;->b:Lbxv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 84
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1088
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v2, p0, Lbxv$1;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lbxv$1;->b:Lbxv$a;

    iget-object v1, p0, Lbxv$1;->c:Lbxv;

    invoke-static {v1}, Lbxv;->a(Lbxv;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lbxv$a;->a(Lbxv$a;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V

    .line 84
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 96
    return-void
.end method

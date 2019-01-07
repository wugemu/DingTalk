.class final Lbqb$1;
.super Ljava/lang/Object;
.source "NoticeReceiveHandler.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqb;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

.field final synthetic b:Lcom/alibaba/wukong/sync/SyncAck;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbqb;


# direct methods
.method constructor <init>(Lbqb;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbqb;

    .prologue
    .line 82
    iput-object p1, p0, Lbqb$1;->d:Lbqb;

    iput-object p2, p0, Lbqb$1;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    iput-object p3, p0, Lbqb$1;->b:Lcom/alibaba/wukong/sync/SyncAck;

    iput-object p4, p0, Lbqb$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 82
    check-cast p1, Ljava/lang/String;

    .line 1085
    iget-object v0, p0, Lbqb$1;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lbqb$1;->d:Lbqb;

    iget-object v1, p0, Lbqb$1;->b:Lcom/alibaba/wukong/sync/SyncAck;

    iget-object v2, p0, Lbqb$1;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lbqb;->a(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    .line 82
    return-void
.end method

.class final Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;
.super Ljava/lang/Object;
.source "SNPostObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->removeCommentAsync(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v0

    sget-object v1, Lbpb$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbpb;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbox;->release(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

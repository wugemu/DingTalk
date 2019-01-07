.class final Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;
.super Ljava/lang/Object;
.source "CirclePostObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->removeCommentAsync(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;->b:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 278
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v0

    sget-object v1, Lfdt$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfdt;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfdo;->release(Ljava/lang/Object;)V

    .line 280
    return-void
.end method

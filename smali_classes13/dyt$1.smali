.class public final Ldyt$1;
.super Lckm$a;
.source "DingStatusChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldyt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Ldyt;


# direct methods
.method public constructor <init>(Ldyt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Ldyt;

    .prologue
    .line 59
    iput-object p1, p0, Ldyt$1;->b:Ldyt;

    iput-object p2, p0, Ldyt$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Integer;

    .line 2033
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1062
    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Ldyt$1;->b:Ldyt;

    iget-object v1, p0, Ldyt$1;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0, v1}, Ldyt;->a(Ldyt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 59
    :cond_0
    return-void
.end method

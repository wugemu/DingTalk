.class final Leel$2;
.super Ljava/lang/Object;
.source "OADatasourceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leel;->a(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leel;


# direct methods
.method constructor <init>(Leel;)V
    .locals 0
    .param p1, "this$0"    # Leel;

    .prologue
    .line 523
    iput-object p1, p0, Leel$2;->a:Leel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    check-cast p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    check-cast p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1526
    iget v0, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    iget v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    sub-int/2addr v0, v1

    .line 523
    return v0
.end method

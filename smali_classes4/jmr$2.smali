.class final Ljmr$2;
.super Lcmg;
.source "RecognitionAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljnb;",
        "Lcom/taobao/ma/model/RecognizeResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljnc;

.field final synthetic b:Ljmr;


# direct methods
.method constructor <init>(Ljmr;Lcma;Ljnc;)V
    .locals 0
    .param p1, "this$0"    # Ljmr;

    .prologue
    .line 94
    .local p2, "x0":Lcma;, "Lcma<Lcom/taobao/ma/model/RecognizeResponseObject;>;"
    iput-object p1, p0, Ljmr$2;->b:Ljmr;

    iput-object p3, p0, Ljmr$2;->a:Ljnc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    check-cast p1, Ljnb;

    .line 1098
    invoke-static {p1}, Lcom/taobao/ma/model/RecognizeResponseObject;->fromIDLModel(Ljnb;)Lcom/taobao/ma/model/RecognizeResponseObject;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Ljmr$2;->a:Ljnc;

    iget-object v1, v1, Ljnc;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/ma/model/RecognizeResponseObject;->mediaId:Ljava/lang/String;

    .line 94
    return-object v0
.end method

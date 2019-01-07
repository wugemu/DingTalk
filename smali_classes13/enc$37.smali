.class final Lenc$37;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->a(Lepw;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leoq;",
        "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 1358
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    iput-object p1, p0, Lenc$37;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1358
    check-cast p1, Leoq;

    .line 2361
    invoke-static {p1}, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->fromIDLModel(Leoq;)Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;

    move-result-object v0

    .line 1358
    return-object v0
.end method

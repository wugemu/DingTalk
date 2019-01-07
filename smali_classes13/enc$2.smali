.class final Lenc$2;
.super Lcmf;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->b(Ljava/lang/String;Ljava/lang/String;IILcmb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmf",
        "<",
        "Leop;",
        "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcmb;J)V
    .locals 2
    .param p1, "this$0"    # Lenc;
    .param p3, "x1"    # J

    .prologue
    .line 365
    .local p2, "x0":Lcmb;, "Lcmb<Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    iput-object p1, p0, Lenc$2;->a:Lenc;

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, p2, v0, v1}, Lcmf;-><init>(Lcmb;J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    check-cast p1, Leop;

    .line 1369
    iget-object v0, p0, Lenc$2;->a:Lenc;

    invoke-static {v0, p1}, Lenc;->a(Lenc;Leop;)Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    move-result-object v0

    .line 365
    return-object v0
.end method

.class final Lenc$4;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->b(Ljava/lang/String;Ljava/lang/String;IILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Leop;",
        "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
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
    .line 412
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    iput-object p1, p0, Lenc$4;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    check-cast p1, Leop;

    .line 1416
    iget-object v0, p0, Lenc$4;->a:Lenc;

    invoke-static {v0, p1}, Lenc;->a(Lenc;Leop;)Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    move-result-object v0

    .line 412
    return-object v0
.end method

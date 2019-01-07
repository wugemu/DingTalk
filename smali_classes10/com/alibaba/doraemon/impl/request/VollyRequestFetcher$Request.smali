.class Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher$Request;
.super Lcom/alibaba/doraemon/impl/request/RequestClient;
.source "VollyRequestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Request"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;


# direct methods
.method protected constructor <init>(Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher$Request;->this$0:Lcom/alibaba/doraemon/impl/request/VollyRequestFetcher;

    .line 26
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;-><init>()V

    .line 27
    return-void
.end method

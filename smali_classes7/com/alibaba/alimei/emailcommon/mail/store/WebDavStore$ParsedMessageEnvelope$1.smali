.class public Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;
.super Ljava/util/HashMap;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwh$d;


# direct methods
.method public constructor <init>(Lwh$d;)V
    .locals 2
    .param p1, "this$0"    # Lwh$d;

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->this$0:Lwh$d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2286
    const-string/jumbo v0, "mime-version"

    const-string/jumbo v1, "MIME-Version"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    const-string/jumbo v0, "content-type"

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string/jumbo v0, "subject"

    const-string/jumbo v1, "Subject"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    const-string/jumbo v0, "date"

    const-string/jumbo v1, "Date"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    const-string/jumbo v0, "thread-topic"

    const-string/jumbo v1, "Thread-Topic"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    const-string/jumbo v0, "thread-index"

    const-string/jumbo v1, "Thread-Index"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    const-string/jumbo v0, "from"

    const-string/jumbo v1, "From"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    const-string/jumbo v0, "to"

    const-string/jumbo v1, "To"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    const-string/jumbo v0, "in-reply-to"

    const-string/jumbo v1, "In-Reply-To"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    const-string/jumbo v0, "cc"

    const-string/jumbo v1, "Cc"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    const-string/jumbo v0, "getcontentlength"

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    return-void
.end method

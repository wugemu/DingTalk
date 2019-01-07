.class final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$b;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 4206
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lvz;)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p2, "literal"    # Lvz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4212
    const/4 v0, 0x0

    return-object v0
.end method

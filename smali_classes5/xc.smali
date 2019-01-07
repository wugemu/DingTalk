.class public final Lxc;
.super Ljava/lang/Object;
.source "UidReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/emailcommon/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Message;)I
    .locals 4
    .param p0, "o1"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p1, "o2"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 14
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v2

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "id1":I
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    .local v1, "id2":I
    if-ge v0, v1, :cond_2

    .line 27
    const/4 v2, -0x1

    goto :goto_0

    .line 28
    :cond_2
    if-le v0, v1, :cond_0

    .line 29
    const/4 v2, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "id1":I
    .end local v1    # "id2":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/alibaba/alimei/emailcommon/mail/Message;

    check-cast p2, Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {p1, p2}, Lxc;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Message;)I

    move-result v0

    return v0
.end method

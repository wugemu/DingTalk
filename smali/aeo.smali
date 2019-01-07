.class public final Laeo;
.super Ljava/lang/Object;
.source "MailSearchHistoryCompator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Laeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Laeo;

    invoke-direct {v0}, Laeo;-><init>()V

    sput-object v0, Laeo;->a:Laeo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 11
    check-cast p1, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    check-cast p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 1017
    if-nez p1, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 1022
    goto :goto_0

    .line 1025
    :cond_2
    iget-wide v2, p1, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->lastVisitTime:J

    .line 1026
    iget-wide v4, p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->lastVisitTime:J

    .line 1028
    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    move v0, v1

    .line 1029
    goto :goto_0

    .line 1030
    :cond_3
    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 11
    goto :goto_0
.end method

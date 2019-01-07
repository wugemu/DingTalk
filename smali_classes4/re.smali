.class public final Lre;
.super Ljava/lang/Object;
.source "CalendarParserImpl.java"

# interfaces
.implements Lps;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyAccountName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lre;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lxv;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    iget-object v1, p0, Lre;->a:Ljava/lang/String;

    .line 1254
    invoke-static {v1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v0

    .line 23
    .local v0, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->parseICSContent(Ljava/lang/String;Lxv;)V

    .line 26
    :cond_0
    return-void
.end method

.class public final Lkqv;
.super Lkqw;
.source "DefaultFieldParser.java"


# static fields
.field private static final a:Lkqv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lkqv;

    invoke-direct {v0}, Lkqv;-><init>()V

    sput-object v0, Lkqv;->a:Lkqv;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 96
    invoke-direct {p0}, Lkqw;-><init>()V

    .line 97
    const-string/jumbo v4, "Content-Transfer-Encoding"

    sget-object v5, Lkqs;->c:Lkqx;

    invoke-virtual {p0, v4, v5}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 99
    const-string/jumbo v4, "Content-Type"

    sget-object v5, Lkqt;->c:Lkqx;

    invoke-virtual {p0, v4, v5}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 100
    const-string/jumbo v4, "Content-Disposition"

    sget-object v5, Lkqr;->c:Lkqx;

    invoke-virtual {p0, v4, v5}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 103
    sget-object v1, Lkqu;->c:Lkqx;

    .line 104
    .local v1, "dateTimeParser":Lkqx;, "Lkqx<Lkqu;>;"
    const-string/jumbo v4, "Date"

    invoke-virtual {p0, v4, v1}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 105
    const-string/jumbo v4, "Resent-Date"

    invoke-virtual {p0, v4, v1}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 107
    sget-object v2, Lkqz;->c:Lkqx;

    .line 108
    .local v2, "mailboxListParser":Lkqx;, "Lkqx<Lkqz;>;"
    const-string/jumbo v4, "From"

    invoke-virtual {p0, v4, v2}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 109
    const-string/jumbo v4, "Resent-From"

    invoke-virtual {p0, v4, v2}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 111
    sget-object v3, Lkqy;->c:Lkqx;

    .line 112
    .local v3, "mailboxParser":Lkqx;, "Lkqx<Lkqy;>;"
    const-string/jumbo v4, "Sender"

    invoke-virtual {p0, v4, v3}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 113
    const-string/jumbo v4, "Resent-Sender"

    invoke-virtual {p0, v4, v3}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 115
    sget-object v0, Lkqq;->c:Lkqx;

    .line 116
    .local v0, "addressListParser":Lkqx;, "Lkqx<Lkqq;>;"
    const-string/jumbo v4, "To"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 117
    const-string/jumbo v4, "Resent-To"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 118
    const-string/jumbo v4, "Cc"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 119
    const-string/jumbo v4, "Resent-Cc"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 120
    const-string/jumbo v4, "Bcc"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 121
    const-string/jumbo v4, "Resent-Bcc"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 122
    const-string/jumbo v4, "Reply-To"

    invoke-virtual {p0, v4, v0}, Lkqv;->a(Ljava/lang/String;Lkqx;)V

    .line 123
    return-void
.end method

.method public static a(Ljava/lang/String;)Lkqn;
    .locals 2
    .param p0, "rawStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0}, Lkta;->a(Ljava/lang/String;)Lksy;

    move-result-object v0

    .line 93
    .local v0, "raw":Lksy;
    sget-object v1, Lkqa;->b:Lkqa;

    invoke-static {v0, v1}, Lkqv;->a(Lksy;Lkqa;)Lkqn;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lksy;Lkqa;)Lkqn;
    .locals 4
    .param p0, "raw"    # Lksy;
    .param p1, "monitor"    # Lkqa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lksw;

    invoke-direct {v0, p0}, Lksw;-><init>(Lksy;)V

    .line 60
    .local v0, "rawField":Lksw;
    sget-object v1, Lkqv;->a:Lkqv;

    invoke-virtual {v0}, Lksw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lksw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0, p1}, Lkqv;->a(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)Lkqn;

    move-result-object v1

    return-object v1
.end method

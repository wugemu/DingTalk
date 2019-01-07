.class public final Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$n;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$g;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$d;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$h;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$i;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$b;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$c;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$f;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$l;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$j;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$m;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$k;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;,
        Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:[I

.field public g:I

.field public h:[I

.field public i:I

.field public j:[I

.field public k:I

.field public l:[I

.field public m:[I

.field public n:I

.field public o:[I

.field public p:I

.field public q:[I

.field public r:I

.field public s:[I

.field public t:I

.field public u:[I

.field public v:I

.field public w:[I

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    sput-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "FREQ"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$k;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$k;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "UNTIL"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$m;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$m;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "COUNT"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$j;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$j;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "INTERVAL"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$l;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$l;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSECOND"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$f;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$f;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMINUTE"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$c;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$c;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYHOUR"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$b;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$b;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYDAY"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTHDAY"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYYEARDAY"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$i;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$i;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYWEEKNO"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$h;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$h;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTH"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$d;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$d;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSETPOS"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$g;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$g;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    const-string/jumbo v1, "WKST"

    new-instance v2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$n;

    invoke-direct {v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$n;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    sput-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    sput-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    return-void
.end method

.method public static a(I)I
    .locals 4
    .param p0, "day"    # I

    .prologue
    const/high16 v0, 0x10000

    .line 175
    packed-switch p0, :pswitch_data_0

    .line 191
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v1, v2, :cond_0

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_0
    const/high16 v0, 0x20000

    .line 195
    :goto_0
    :pswitch_1
    return v0

    .line 181
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 183
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 185
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 187
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 189
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 194
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[eventrecurrence] bad day of week: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "freq"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 270
    if-nez p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    const-string/jumbo v1, "YEARLY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    const/4 v0, 0x7

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v1, "MONTHLY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    const/4 v0, 0x6

    goto :goto_0

    .line 278
    :cond_3
    const-string/jumbo v1, "WEEKLY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    const/4 v0, 0x5

    goto :goto_0

    .line 280
    :cond_4
    const-string/jumbo v1, "DAILY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    const/4 v0, 0x4

    goto :goto_0

    .line 282
    :cond_5
    const-string/jumbo v1, "HOURLY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    const/4 v0, 0x3

    goto :goto_0

    .line 284
    :cond_6
    const-string/jumbo v1, "MINUTELY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 285
    const/4 v0, 0x2

    goto :goto_0

    .line 286
    :cond_7
    const-string/jumbo v1, "SECONDLY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 334
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->m:[I

    aget v0, v2, p2

    .line 335
    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->l:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "values"    # [I

    .prologue
    .line 322
    if-lez p2, :cond_1

    .line 323
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 p2, p2, -0x1

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 326
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static a([II[II)Z
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "count1"    # I
    .param p2, "array2"    # [I
    .param p3, "count2"    # I

    .prologue
    const/4 v1, 0x0

    .line 420
    if-eq p1, p3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 424
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 5
    .param p0, "day"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    sparse-switch p0, :sswitch_data_0

    .line 218
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-eq v3, v4, :cond_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad day of week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v0, v1

    .line 222
    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    move v0, v2

    .line 208
    goto :goto_0

    .line 210
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 212
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 216
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 221
    :cond_0
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[eventrecurrence] bad day of week: "

    aput-object v3, v2, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->z:Ljava/util/HashMap;

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1
    .param p0, "freq"    # I

    .prologue
    .line 297
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 298
    const-string/jumbo v0, ""

    .line 316
    :goto_0
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    .line 302
    const-string/jumbo v0, "YEARLY"

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 304
    const-string/jumbo v0, "MONTHLY"

    goto :goto_0

    .line 305
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    .line 306
    const-string/jumbo v0, "WEEKLY"

    goto :goto_0

    .line 307
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 308
    const-string/jumbo v0, "DAILY"

    goto :goto_0

    .line 309
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 310
    const-string/jumbo v0, "HOURLY"

    goto :goto_0

    .line 311
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 312
    const-string/jumbo v0, "MINUTELY"

    goto :goto_0

    .line 313
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 314
    const-string/jumbo v0, "SECONDLY"

    goto :goto_0

    .line 316
    :cond_7
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 237
    sparse-switch p0, :sswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad day argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :sswitch_0
    const-string/jumbo v0, "SU"

    .line 251
    :goto_0
    return-object v0

    .line 241
    :sswitch_1
    const-string/jumbo v0, "MO"

    goto :goto_0

    .line 243
    :sswitch_2
    const-string/jumbo v0, "TU"

    goto :goto_0

    .line 245
    :sswitch_3
    const-string/jumbo v0, "WE"

    goto :goto_0

    .line 247
    :sswitch_4
    const-string/jumbo v0, "TH"

    goto :goto_0

    .line 249
    :sswitch_5
    const-string/jumbo v0, "FR"

    goto :goto_0

    .line 251
    :sswitch_6
    const-string/jumbo v0, "SA"

    goto :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 916
    new-instance v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;

    invoke-direct {v2}, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;-><init>()V

    .line 919
    .local v2, "recurRuleModel":Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;
    :try_start_0
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a:I

    invoke-static {v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->freq:Ljava/lang/String;

    .line 920
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->interval:Ljava/lang/Integer;

    .line 921
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->count:Ljava/lang/Integer;

    .line 922
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 924
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v3}, Liwu;->a(Ljava/lang/String;)Liws;

    move-result-object v3

    invoke-static {v3}, Liwp;->a(Liws;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->until:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 930
    :cond_0
    :goto_0
    :try_start_2
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    invoke-static {v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->weekStart:Ljava/lang/String;

    .line 931
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->u:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    invoke-static {v3, v4}, Lavz;->a([II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byMonthListOfYear:Ljava/util/List;

    .line 932
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    invoke-static {v3, v4}, Lavz;->a([II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byWeekListOfYear:Ljava/util/List;

    .line 933
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->l:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    invoke-static {v3, v4}, Lavz;->a([II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfYear:Ljava/util/List;

    .line 934
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->o:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    invoke-static {v3, v4}, Lavz;->a([II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfMonth:Ljava/util/List;

    .line 936
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    array-length v3, v3

    if-nez v3, :cond_3

    .line 937
    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    .line 944
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->w:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->x:I

    invoke-static {v3, v4}, Lavz;->a([II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->bySetPosList:Ljava/util/List;

    .line 949
    :goto_1
    return-object v2

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v3, "eventRecurrent to recur failed"

    invoke-static {v3, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 945
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "eventRecurrent to recur failed"

    invoke-static {v3, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    .line 940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    if-ge v1, v3, :cond_2

    .line 941
    iget-object v3, v2, Lcom/alibaba/android/ding/base/objects/idl/RecurRuleModel;->byDayListOfWeek:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 12
    .param p1, "recur"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 553
    .line 1477
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    .line 1478
    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->x:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->r:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->p:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->k:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->i:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->g:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    iput v9, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a:I

    .line 554
    const/4 v3, 0x0

    .line 557
    .local v3, "parseFlags":I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, "parts":[Ljava/lang/String;
    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_5

    aget-object v5, v6, v8

    .line 563
    .local v5, "part":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 566
    const/16 v11, 0x3d

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 567
    .local v0, "equalIndex":I
    if-gtz v0, :cond_0

    .line 569
    new-instance v8, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Missing LHS in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 571
    :cond_0
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "lhs":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "rhs":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 574
    new-instance v8, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Missing RHS in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 580
    :cond_1
    sget-object v11, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->y:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;

    .line 581
    .local v4, "parser":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
    if-nez v4, :cond_2

    .line 582
    const-string/jumbo v11, "X-"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 585
    new-instance v8, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Couldn\'t find parser for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    :cond_2
    invoke-virtual {v4, v7, p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;->a(Ljava/lang/String;Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)I

    move-result v1

    .line 588
    .local v1, "flag":I
    and-int v11, v3, v1

    if-eqz v11, :cond_3

    .line 589
    new-instance v8, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Part "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " was specified twice"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 591
    :cond_3
    or-int/2addr v3, v1

    .line 561
    .end local v0    # "equalIndex":I
    .end local v1    # "flag":I
    .end local v2    # "lhs":Ljava/lang/String;
    .end local v4    # "parser":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
    .end local v7    # "rhs":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 595
    .end local v5    # "part":Ljava/lang/String;
    :cond_5
    and-int/lit16 v8, v3, 0x2000

    if-nez v8, :cond_6

    .line 596
    const/high16 v8, 0x20000

    iput v8, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    .line 599
    :cond_6
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_7

    .line 600
    new-instance v8, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    const-string/jumbo v9, "Must specify a FREQ value"

    invoke-direct {v8, v9}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 608
    :cond_7
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    if-ne p0, p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 436
    :cond_1
    instance-of v3, p1, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    if-nez v3, :cond_2

    move v1, v2

    .line 437
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 439
    check-cast v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 441
    .local v0, "er":Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 443
    :goto_1
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    iget v4, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->f:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->g:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->f:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->g:I

    .line 447
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->h:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->i:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->h:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->i:I

    .line 448
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->j:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->k:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->j:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->k:I

    .line 449
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->l:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->l:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    .line 450
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->m:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->m:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    .line 451
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->o:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->p:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->o:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->p:I

    .line 452
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->q:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->r:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->q:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->r:I

    .line 453
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    .line 454
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->u:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->u:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    .line 455
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->w:[I

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->x:I

    iget-object v5, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->w:[I

    iget v6, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->x:I

    .line 456
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a([II[II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 441
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a:I

    packed-switch v3, :pswitch_data_0

    .line 371
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    const-string/jumbo v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_0
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    if-eqz v3, :cond_1

    .line 376
    const-string/jumbo v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    if-eqz v3, :cond_2

    .line 380
    const-string/jumbo v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    :cond_2
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    if-eqz v3, :cond_3

    .line 384
    const-string/jumbo v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget v3, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    invoke-static {v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    const-string/jumbo v3, ";BYSECOND="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->g:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->f:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string/jumbo v3, ";BYMINUTE="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->i:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->h:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string/jumbo v3, ";BYHOUR="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->k:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->j:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    iget v0, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    .line 392
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 393
    const-string/jumbo v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    add-int/lit8 v0, v0, -0x1

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 396
    invoke-direct {p0, v2, v1}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    .line 397
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "count":I
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 351
    :pswitch_1
    const-string/jumbo v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 354
    :pswitch_2
    const-string/jumbo v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 357
    :pswitch_3
    const-string/jumbo v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 360
    :pswitch_4
    const-string/jumbo v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 363
    :pswitch_5
    const-string/jumbo v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 366
    :pswitch_6
    const-string/jumbo v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 399
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    .line 401
    .end local v1    # "i":I
    :cond_5
    const-string/jumbo v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->p:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->o:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 402
    const-string/jumbo v3, ";BYYEARDAY="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->r:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->q:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 403
    const-string/jumbo v3, ";BYWEEKNO="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->t:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->s:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 404
    const-string/jumbo v3, ";BYMONTH="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->v:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->u:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 405
    const-string/jumbo v3, ";BYSETPOS="

    iget v4, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->x:I

    iget-object v5, p0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->w:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

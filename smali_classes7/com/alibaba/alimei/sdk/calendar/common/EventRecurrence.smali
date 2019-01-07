.class public final Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$n;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$g;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$h;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$i;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$e;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$a;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$c;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$f;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$j;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$m;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$k;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;,
        Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
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

.field private static final B:Ljava/util/HashMap;
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

.field private static y:Ljava/lang/String;

.field private static z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;",
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

    .line 31
    const-string/jumbo v0, "EventRecur"

    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->y:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "FREQ"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$k;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$k;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "UNTIL"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$m;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$m;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "COUNT"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$j;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$j;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "INTERVAL"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSECOND"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$f;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$f;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMINUTE"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$c;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$c;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYHOUR"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYDAY"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$a;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$a;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTHDAY"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$e;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$e;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYYEARDAY"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$i;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$i;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYWEEKNO"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$h;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$h;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTH"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSETPOS"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$g;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$g;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    const-string/jumbo v1, "WKST"

    new-instance v2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$n;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$n;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    const-string/jumbo v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    const-string/jumbo v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 193
    packed-switch p0, :pswitch_data_0

    .line 210
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

    .line 196
    :pswitch_0
    const/high16 v0, 0x10000

    .line 208
    :goto_0
    return v0

    .line 198
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 200
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 202
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 204
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 206
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 208
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, -0x1

    .line 301
    :goto_0
    return v0

    .line 300
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad day argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 323
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    aget v0, v2, p2

    .line 324
    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "values"    # [I

    .prologue
    .line 310
    if-lez p2, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 p2, p2, -0x1

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 314
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
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

    .line 487
    if-eq p1, p3, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v1

    .line 491
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 492
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 215
    sparse-switch p0, :sswitch_data_0

    .line 232
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

    .line 218
    :sswitch_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 220
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 228
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 230
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 215
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

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_0

    .line 291
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

    .line 277
    :sswitch_0
    const-string/jumbo v0, "SU"

    .line 289
    :goto_0
    return-object v0

    .line 279
    :sswitch_1
    const-string/jumbo v0, "MO"

    goto :goto_0

    .line 281
    :sswitch_2
    const-string/jumbo v0, "TU"

    goto :goto_0

    .line 283
    :sswitch_3
    const-string/jumbo v0, "WE"

    goto :goto_0

    .line 285
    :sswitch_4
    const-string/jumbo v0, "TH"

    goto :goto_0

    .line 287
    :sswitch_5
    const-string/jumbo v0, "FR"

    goto :goto_0

    .line 289
    :sswitch_6
    const-string/jumbo v0, "SA"

    goto :goto_0

    .line 275
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

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    return-object v0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 5
    .param p0, "weekDay"    # I

    .prologue
    .line 463
    sget-object v3, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    sget-object v3, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->B:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 465
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 466
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 467
    .local v2, "value":I
    if-ne v2, p0, :cond_0

    .line 473
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 12
    .param p1, "recur"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 622
    .line 1545
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 1546
    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    iput v9, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    .line 624
    const/4 v3, 0x0

    .line 627
    .local v3, "parseFlags":I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 631
    .local v6, "parts":[Ljava/lang/String;
    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_5

    aget-object v5, v6, v8

    .line 633
    .local v5, "part":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 636
    const/16 v11, 0x3d

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 637
    .local v0, "equalIndex":I
    if-gtz v0, :cond_0

    .line 639
    new-instance v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Missing LHS in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 642
    :cond_0
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "lhs":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, "rhs":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 645
    new-instance v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Missing RHS in "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 652
    :cond_1
    sget-object v11, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->z:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;

    .line 653
    .local v4, "parser":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
    if-nez v4, :cond_2

    .line 654
    const-string/jumbo v11, "X-"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 658
    new-instance v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Couldn\'t find parser for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 660
    :cond_2
    invoke-virtual {v4, v7, p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)I

    move-result v1

    .line 661
    .local v1, "flag":I
    and-int v11, v3, v1

    if-eqz v11, :cond_3

    .line 662
    new-instance v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

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

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 664
    :cond_3
    or-int/2addr v3, v1

    .line 631
    .end local v0    # "equalIndex":I
    .end local v1    # "flag":I
    .end local v2    # "lhs":Ljava/lang/String;
    .end local v4    # "parser":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
    .end local v7    # "rhs":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 669
    .end local v5    # "part":Ljava/lang/String;
    :cond_5
    and-int/lit16 v8, v3, 0x2000

    if-nez v8, :cond_6

    .line 670
    const/high16 v8, 0x20000

    iput v8, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    .line 674
    :cond_6
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_7

    .line 675
    new-instance v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    const-string/jumbo v9, "Must specify a FREQ value"

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 679
    :cond_7
    and-int/lit8 v8, v3, 0x6

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 683
    sget-object v8, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->y:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Warning: rrule has both UNTIL and COUNT: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_8
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

    .line 501
    if-ne p0, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    instance-of v3, p1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-nez v3, :cond_2

    move v1, v2

    .line 505
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 508
    check-cast v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 510
    .local v0, "er":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    iget v4, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 512
    :goto_1
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    iget v4, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    iget v4, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    iget v4, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->f:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->f:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    .line 516
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->h:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->h:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    .line 517
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    .line 518
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 519
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 520
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    .line 521
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    .line 522
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->s:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->s:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    .line 523
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    .line 524
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    iget v6, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    .line 525
    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a([II[II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 510
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    .line 512
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 530
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
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    packed-switch v3, :pswitch_data_0

    .line 363
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    const-string/jumbo v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-eqz v3, :cond_1

    .line 369
    const-string/jumbo v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    if-eqz v3, :cond_2

    .line 374
    const-string/jumbo v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    if-eqz v3, :cond_3

    .line 379
    const-string/jumbo v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    const-string/jumbo v3, ";BYSECOND="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->f:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 384
    const-string/jumbo v3, ";BYMINUTE="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->h:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 385
    const-string/jumbo v3, ";BYSECOND="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    iget v0, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 389
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 390
    const-string/jumbo v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v0, v0, -0x1

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 393
    invoke-direct {p0, v2, v1}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    .line 394
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "count":I
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 344
    :pswitch_1
    const-string/jumbo v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    :pswitch_2
    const-string/jumbo v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 350
    :pswitch_3
    const-string/jumbo v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 353
    :pswitch_4
    const-string/jumbo v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 356
    :pswitch_5
    const-string/jumbo v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 359
    :pswitch_6
    const-string/jumbo v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 396
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;I)V

    .line 399
    .end local v1    # "i":I
    :cond_5
    const-string/jumbo v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 400
    const-string/jumbo v3, ";BYYEARDAY="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 401
    const-string/jumbo v3, ";BYWEEKNO="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->s:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 402
    const-string/jumbo v3, ";BYMONTH="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 403
    const-string/jumbo v3, ";BYSETPOS="

    iget v4, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 338
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

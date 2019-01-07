.class final Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;
.super Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[I[II)V
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "byday"    # [I
    .param p2, "bydayNum"    # [I
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 814
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x2

    .line 816
    .local v4, "wdayStrStart":I
    if-lez v4, :cond_0

    .line 818
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "numPart":Ljava/lang/String;
    const/16 v5, -0x35

    const/16 v6, 0x35

    invoke-static {v1, v5, v6, v7}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;->a(Ljava/lang/String;IIZ)I

    move-result v0

    .line 820
    .local v0, "num":I
    aput v0, p2, p3

    .line 821
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 826
    .end local v0    # "num":I
    .end local v1    # "numPart":Ljava/lang/String;
    .local v3, "wdayStr":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 827
    .local v2, "wday":Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 828
    new-instance v5, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid BYDAY value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    .end local v2    # "wday":Ljava/lang/Integer;
    .end local v3    # "wdayStr":Ljava/lang/String;
    :cond_0
    move-object v3, p0

    .restart local v3    # "wdayStr":Ljava/lang/String;
    goto :goto_0

    .line 830
    .restart local v2    # "wday":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p1, p3

    .line 831
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 788
    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 790
    const/4 v1, 0x1

    .line 791
    .local v1, "bydayCount":I
    new-array v0, v7, [I

    .line 792
    .local v0, "byday":[I
    new-array v2, v7, [I

    .line 793
    .local v2, "bydayNum":[I
    const/4 v6, 0x0

    invoke-static {p1, v0, v2, v6}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;->a(Ljava/lang/String;[I[II)V

    .line 804
    :cond_0
    iput-object v0, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->l:[I

    .line 805
    iput-object v2, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->m:[I

    .line 806
    iput v1, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->n:I

    .line 807
    const/16 v6, 0x80

    return v6

    .line 795
    .end local v0    # "byday":[I
    .end local v1    # "bydayCount":I
    .end local v2    # "bydayNum":[I
    :cond_1
    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "wdays":[Ljava/lang/String;
    array-length v4, v5

    .line 798
    .local v4, "len":I
    move v1, v4

    .restart local v1    # "bydayCount":I
    new-array v0, v4, [I

    .line 799
    .restart local v0    # "byday":[I
    new-array v2, v1, [I

    .line 800
    .restart local v2    # "bydayNum":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 801
    aget-object v6, v5, v3

    invoke-static {v6, v0, v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$a;->a(Ljava/lang/String;[I[II)V

    .line 800
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

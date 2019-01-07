.class final Lajg$1;
.super Ljava/lang/Object;
.source "AlarmUtils.java"

# interfaces
.implements Lcmt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lajg;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string/jumbo v0, "dt_function"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "vip_alarm_alluser_rate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 1030
    invoke-static {p4, v0}, Lajg;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2030
    sput v0, Lajg;->a:I

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string/jumbo v0, "imap_alarm_alluser_rate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/16 v0, 0x32

    .line 3030
    invoke-static {p4, v0}, Lajg;->a(Ljava/lang/String;I)I

    move-result v0

    .line 4030
    sput v0, Lajg;->b:I

    goto :goto_0
.end method

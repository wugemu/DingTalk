.class public final Lcqf;
.super Ljava/lang/Object;
.source "FestivalUtil.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sput-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0101"

    sget v2, Lcig$j;->and_calendar_festival_new_year_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0214"

    sget v2, Lcig$j;->and_calendar_festival_valentine_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0401"

    sget v2, Lcig$j;->and_calendar_festival_april_fools_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0501"

    sget v2, Lcig$j;->and_calendar_festival_labor_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "1225"

    sget v2, Lcig$j;->and_calendar_festival_christmas_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcqf;->b:Ljava/util/Map;

    .line 43
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0101"

    sget v2, Lcig$j;->and_calendar_festival_new_year_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0214"

    sget v2, Lcig$j;->and_calendar_festival_valentine_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0308"

    sget v2, Lcig$j;->and_calendar_festival_women_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0312"

    sget v2, Lcig$j;->and_calendar_festival_arbor_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0401"

    sget v2, Lcig$j;->and_calendar_festival_april_fools_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "0501"

    sget v2, Lcig$j;->and_calendar_festival_labor_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0504"

    sget v2, Lcig$j;->and_calendar_festival_youth_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0601"

    sget v2, Lcig$j;->and_calendar_festival_children_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0701"

    sget v2, Lcig$j;->and_calendar_festival_party_building_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0801"

    sget v2, Lcig$j;->and_calendar_festival_arm_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "0910"

    sget v2, Lcig$j;->and_calendar_festival_teacher_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "1001"

    sget v2, Lcig$j;->and_calendar_festival_national_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcqf;->b:Ljava/util/Map;

    const-string/jumbo v1, "1220"

    sget v2, Lcig$j;->and_calendar_festival_macao_reunification_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcqf;->a:Ljava/util/Map;

    const-string/jumbo v1, "1225"

    sget v2, Lcig$j;->and_calendar_festival_christmas_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    sput-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0101"

    sget v2, Lcig$j;->and_calendar_festival_new_year_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0214"

    sget v2, Lcig$j;->and_calendar_festival_valentine_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0401"

    sget v2, Lcig$j;->and_calendar_festival_april_fools_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0501"

    sget v2, Lcig$j;->and_calendar_festival_labor_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0510"

    sget v2, Lcig$j;->and_calendar_festival_wesak_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0603"

    sget v2, Lcig$j;->and_calendar_festival_agong_birthday:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0625"

    sget v2, Lcig$j;->and_calendar_festival_hari_raya_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0626"

    sget v2, Lcig$j;->and_calendar_festival_hari_raya_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0831"

    sget v2, Lcig$j;->and_calendar_festival_indian_national_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0901"

    sget v2, Lcig$j;->and_calendar_festival_indian_gubanger_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0902"

    sget v2, Lcig$j;->and_calendar_festival_indian_gubanger_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0916"

    sget v2, Lcig$j;->and_calendar_festival_malaysia_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "0930"

    sget v2, Lcig$j;->and_calendar_festival_awal_muharram_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "1018"

    sget v2, Lcig$j;->and_calendar_festival_deepavali_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "1201"

    sget v2, Lcig$j;->and_calendar_festival_muhammad_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcqf;->c:Ljava/util/Map;

    const-string/jumbo v1, "1225"

    sget v2, Lcig$j;->and_calendar_festival_christmas_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sput-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0101"

    sget v2, Lcig$j;->and_calendar_festival_new_year_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0126"

    sget v2, Lcig$j;->and_calendar_festival_republic_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0321"

    sget v2, Lcig$j;->and_calendar_festival_persian_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0404"

    sget v2, Lcig$j;->and_calendar_festival_ram_navami_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0405"

    sget v2, Lcig$j;->and_calendar_festival_ram_navami_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0510"

    sget v2, Lcig$j;->and_calendar_festival_buddha_purnima_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0626"

    sget v2, Lcig$j;->and_calendar_festival_idul_fitr_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "0815"

    sget v2, Lcig$j;->and_calendar_festival_independance_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "1018"

    sget v2, Lcig$j;->and_calendar_festival_deepavali_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcqf;->d:Ljava/util/Map;

    const-string/jumbo v1, "1225"

    sget v2, Lcig$j;->and_calendar_festival_christmas_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    sput-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0101"

    sget v2, Lcig$j;->and_calendar_festival_spring_festival_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0115"

    sget v2, Lcig$j;->and_calendar_festival_lantern_festival_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0505"

    sget v2, Lcig$j;->and_calendar_festival_dragon_boat_festival_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0707"

    sget v2, Lcig$j;->and_calendar_festival_chinese_valentine_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0815"

    sget v2, Lcig$j;->and_calendar_festival_mid_autumn_festival_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "0909"

    sget v2, Lcig$j;->and_calendar_festival_double_ninth_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "1208"

    sget v2, Lcig$j;->and_calendar_festival_laba_festival_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcqf;->e:Ljava/util/Map;

    const-string/jumbo v1, "1224"

    sget v2, Lcig$j;->and_calendar_festival_lunar_year_day:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "day"    # I

    .prologue
    .line 109
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, p1}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcqf;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string/jumbo v1, ""

    .line 113
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v1, Lcqf;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(III)Ljava/lang/String;
    .locals 4
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I

    .prologue
    .line 141
    invoke-static {p1, p2}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcqf;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget-object v2, Lcqf;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "lFestival":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 152
    .end local v1    # "lFestival":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 148
    :cond_0
    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    .line 149
    invoke-static {p0, p1}, Lcqg;->b(II)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 150
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcig$j;->and_calendar_festival_eve_day:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "day"    # I

    .prologue
    .line 117
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, p1}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcqf;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, ""

    .line 121
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v1, Lcqf;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static c(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "day"    # I

    .prologue
    .line 125
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, p1}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcqf;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-string/jumbo v1, ""

    .line 129
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v1, Lcqf;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static d(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "day"    # I

    .prologue
    .line 133
    add-int/lit8 v1, p0, 0x1

    invoke-static {v1, p1}, Lcqe;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcqf;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-string/jumbo v1, ""

    .line 137
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v1, Lcqf;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

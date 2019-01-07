.class public final Lcqz;
.super Ljava/lang/Object;
.source "EmotionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcqz$a;,
        Lcqz$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqz$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqz$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqz$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcqz$a;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcqz$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/regex/Pattern;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcqz;->a:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcqz;->b:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcqz;->c:Ljava/util/List;

    .line 68
    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[del]"

    sget v2, Lcig$e;->emotion_delete:I

    const/16 v3, 0x4b

    invoke-direct {v0, v1, v2, v3, v5}, Lcqz$a;-><init>(Ljava/lang/String;IIB)V

    sput-object v0, Lcqz;->d:Lcqz$a;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcqz;->e:Ljava/util/Map;

    .line 73
    sput-boolean v5, Lcqz;->j:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcqz;->f:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcqz;->g:Ljava/util/List;

    .line 7119
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5fae\u7b11]"

    const-string/jumbo v2, "[Smile]"

    sget v3, Lcig$e;->emotion_001:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7120
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u61a8\u7b11]"

    const-string/jumbo v2, "[Wow]"

    sget v3, Lcig$e;->emotion_002:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7121
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8272]"

    const-string/jumbo v2, "[Yum]"

    sget v3, Lcig$e;->emotion_003:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7122
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u53d1\u5446]"

    const-string/jumbo v2, "[Dazed]"

    sget v3, Lcig$e;->emotion_004:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7123
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8001\u677f]"

    const-string/jumbo v2, "[Boss]"

    sget v3, Lcig$e;->emotion_005:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7124
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6d41\u6cea]"

    const-string/jumbo v2, "[Sob]"

    sget v3, Lcig$e;->emotion_006:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7125
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5bb3\u7f9e]"

    const-string/jumbo v2, "[Shy]"

    sget v3, Lcig$e;->emotion_007:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7126
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u95ed\u5634]"

    const-string/jumbo v2, "[Silence]"

    sget v3, Lcig$e;->emotion_008:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7127
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7761]"

    const-string/jumbo v2, "[Sleepy]"

    sget v3, Lcig$e;->emotion_009:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7128
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5927\u54ed]"

    const-string/jumbo v2, "[Cry]"

    sget v3, Lcig$e;->emotion_010:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7129
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5c34\u5c2c]"

    const-string/jumbo v2, "[Awkward]"

    sget v3, Lcig$e;->emotion_011:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7130
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u53d1\u6012]"

    const-string/jumbo v2, "[Steamed]"

    sget v3, Lcig$e;->emotion_012:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7131
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8c03\u76ae]"

    const-string/jumbo v2, "[Tongueout]"

    sget v3, Lcig$e;->emotion_013:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7132
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5927\u7b11]"

    const-string/jumbo v2, "[Laugh]"

    sget v3, Lcig$e;->emotion_014:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7133
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62b1\u62f3]"

    const-string/jumbo v2, "[Salute]"

    sget v3, Lcig$e;->emotion_079:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7134
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[OK]"

    const-string/jumbo v2, "[OK]"

    sget v3, Lcig$e;->emotion_023:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7135
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8d5e]"

    const-string/jumbo v2, "[Like]"

    sget v3, Lcig$e;->emotion_078:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7136
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9f13\u638c]"

    const-string/jumbo v2, "[Clap]"

    sget v3, Lcig$e;->emotion_024:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7137
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u63e1\u624b]"

    const-string/jumbo v2, "[Shake]"

    sget v3, Lcig$e;->emotion_025:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7138
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u80dc\u5229]"

    const-string/jumbo v2, "[Peace]"

    sget v3, Lcig$e;->emotion_033:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7139
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u60ca\u8bb6]"

    const-string/jumbo v2, "[Scowl]"

    sget v3, Lcig$e;->emotion_015:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7140
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6d41\u6c57]"

    const-string/jumbo v2, "[Sweat]"

    sget v3, Lcig$e;->emotion_016:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7141
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5e7f\u64ad]"

    const-string/jumbo v2, "[Shout]"

    sget v3, Lcig$e;->emotion_017:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7142
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u81ea\u4fe1]"

    const-string/jumbo v2, "[Self-confident]"

    sget v3, Lcig$e;->emotion_018:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7143
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4f60\u5f3a]"

    const-string/jumbo v2, "[Awesome]"

    sget v3, Lcig$e;->emotion_019:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7144
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6012\u543c]"

    const-string/jumbo v2, "[Pumped]"

    sget v3, Lcig$e;->emotion_020:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7145
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u60ca\u6115]"

    const-string/jumbo v2, "[What?!]"

    sget v3, Lcig$e;->emotion_021:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7146
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7591\u95ee]"

    const-string/jumbo v2, "[Question]"

    sget v3, Lcig$e;->emotion_022:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7147
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5077\u7b11]"

    const-string/jumbo v2, "[Chuckle]"

    sget v3, Lcig$e;->emotion_026:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7148
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u65e0\u804a]"

    const-string/jumbo v2, "[Bored]"

    sget v3, Lcig$e;->emotion_027:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7149
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u52a0\u6cb9]"

    const-string/jumbo v2, "[YouCanDoIt]"

    sget v3, Lcig$e;->emotion_028:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7150
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5feb\u54ed\u4e86]"

    const-string/jumbo v2, "[TearingUp]"

    sget v3, Lcig$e;->emotion_029:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7151
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5410]"

    const-string/jumbo v2, "[Puke]"

    sget v3, Lcig$e;->emotion_030:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7152
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6655]"

    const-string/jumbo v2, "[Dizzy]"

    sget v3, Lcig$e;->emotion_031:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7153
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6478\u6478]"

    const-string/jumbo v2, "[Comfort]"

    sget v3, Lcig$e;->emotion_032:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7154
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u98de\u543b]"

    const-string/jumbo v2, "[Blowkiss]"

    sget v3, Lcig$e;->emotion_034:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7155
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8df3\u821e]"

    const-string/jumbo v2, "[Yay]"

    sget v3, Lcig$e;->emotion_035:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7156
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u50bb\u7b11]"

    const-string/jumbo v2, "[Oops]"

    sget v3, Lcig$e;->emotion_036:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7157
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9119\u89c6]"

    const-string/jumbo v2, "[Dislike]"

    sget v3, Lcig$e;->emotion_037:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7158
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5618]"

    const-string/jumbo v2, "[Shhh]"

    sget v3, Lcig$e;->emotion_038:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7159
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8870]"

    const-string/jumbo v2, "[Grr]"

    sget v3, Lcig$e;->emotion_039:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7160
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u601d\u8003]"

    const-string/jumbo v2, "[Hmm\u2026]"

    sget v3, Lcig$e;->emotion_040:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7161
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4eb2\u4eb2]"

    const-string/jumbo v2, "[Kiss]"

    sget v3, Lcig$e;->emotion_041:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7162
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u65e0\u5948]"

    const-string/jumbo v2, "[Disappointed]"

    sget v3, Lcig$e;->emotion_042:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7163
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u611f\u5192]"

    const-string/jumbo v2, "[Pollution]"

    sget v3, Lcig$e;->emotion_043:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7164
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5bf9\u4e0d\u8d77]"

    const-string/jumbo v2, "[Sorry]"

    sget v3, Lcig$e;->emotion_044:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7165
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u518d\u89c1]"

    const-string/jumbo v2, "[Wave]"

    sget v3, Lcig$e;->emotion_045:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7166
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6295\u964d]"

    const-string/jumbo v2, "[GiveUp]"

    sget v3, Lcig$e;->emotion_046:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7167
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u54fc]"

    const-string/jumbo v2, "[Grumpy]"

    sget v3, Lcig$e;->emotion_047:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7168
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6b20\u6241]"

    const-string/jumbo v2, "[FaceSlap]"

    sget v3, Lcig$e;->emotion_048:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7169
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62dc\u6258]"

    const-string/jumbo v2, "[Please]"

    sget v3, Lcig$e;->emotion_049:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7170
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u53ef\u601c]"

    const-string/jumbo v2, "[Aww\u2026]"

    sget v3, Lcig$e;->emotion_050:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7171
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8212\u670d]"

    const-string/jumbo v2, "[Relax]"

    sget v3, Lcig$e;->emotion_051:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7172
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7231\u610f]"

    const-string/jumbo v2, "[Romantic]"

    sget v3, Lcig$e;->emotion_052:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7173
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5355\u6311]"

    const-string/jumbo v2, "[HeyYou!]"

    sget v3, Lcig$e;->emotion_053:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7174
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8d22\u8ff7]"

    const-string/jumbo v2, "[MoneyMoney]"

    sget v3, Lcig$e;->emotion_054:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7175
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8ff7\u60d1]"

    const-string/jumbo v2, "[Puzzled]"

    sget v3, Lcig$e;->emotion_055:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7176
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u59d4\u5c48]"

    const-string/jumbo v2, "[Worried]"

    sget v3, Lcig$e;->emotion_056:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7177
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7075\u611f]"

    const-string/jumbo v2, "[Idea]"

    sget v3, Lcig$e;->emotion_057:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7178
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5929\u4f7f]"

    const-string/jumbo v2, "[Angle]"

    sget v3, Lcig$e;->emotion_058:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7179
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9b3c\u8138]"

    const-string/jumbo v2, "[SillyFace]"

    sget v3, Lcig$e;->emotion_059:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7180
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u51c4\u51c9]"

    const-string/jumbo v2, "[Phew]"

    sget v3, Lcig$e;->emotion_060:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7181
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u90c1\u95f7]"

    const-string/jumbo v2, "[Tired]"

    sget v3, Lcig$e;->emotion_061:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7182
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u574f\u7b11]"

    const-string/jumbo v2, "[Trick]"

    sget v3, Lcig$e;->emotion_063:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7183
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7b97\u8d26]"

    const-string/jumbo v2, "[SoMuch]"

    sget v3, Lcig$e;->emotion_064:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7184
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5fcd\u8005]"

    const-string/jumbo v2, "[Sneaky]"

    sget v3, Lcig$e;->emotion_066:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7185
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u70b8\u5f39]"

    const-string/jumbo v2, "[Uh-Oh]"

    sget v3, Lcig$e;->emotion_067:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7186
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u90ae\u4ef6]"

    const-string/jumbo v2, "[Mail]"

    sget v3, Lcig$e;->emotion_068:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7187
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7535\u8bdd]"

    const-string/jumbo v2, "[Phone]"

    sget v3, Lcig$e;->emotion_069:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7188
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u793c\u7269]"

    const-string/jumbo v2, "[Present]"

    sget v3, Lcig$e;->emotion_070:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7189
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u751f\u65e5\u5feb\u4e50]"

    const-string/jumbo v2, "[Birthday]"

    sget v3, Lcig$e;->emotion_126:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7190
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7231\u5fc3]"

    const-string/jumbo v2, "[Love]"

    sget v3, Lcig$e;->emotion_071:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7191
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5fc3\u788e]"

    const-string/jumbo v2, "[BrokenHeart]"

    sget v3, Lcig$e;->emotion_072:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7192
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5634\u5507]"

    const-string/jumbo v2, "[Lips]"

    sget v3, Lcig$e;->emotion_073:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7193
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9c9c\u82b1]"

    const-string/jumbo v2, "[Rose]"

    sget v3, Lcig$e;->emotion_074:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7194
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6b8b\u82b1]"

    const-string/jumbo v2, "[Wilted]"

    sget v3, Lcig$e;->emotion_075:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7195
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u51fa\u5dee]"

    const-string/jumbo v2, "[BusinessTrip]"

    sget v3, Lcig$e;->emotion_076:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7196
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5e72\u676f]"

    const-string/jumbo v2, "[Cheers]"

    sget v3, Lcig$e;->emotion_077:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7197
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7ea2\u5305]"

    const-string/jumbo v2, "[RedPacket]"

    sget v3, Lcig$e;->emotion_077_1:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7198
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6253\u62db\u547c]"

    const-string/jumbo v2, "[Hi]"

    sget v3, Lcig$e;->emotion_125:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7199
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9001\u82b1\u82b1]"

    const-string/jumbo v2, "[Flower]"

    sget v3, Lcig$e;->emotion_134:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7200
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9489\u9489]"

    const-string/jumbo v2, "[DingTalk]"

    sget v3, Lcig$e;->emotion_127:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7201
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[100\u5206]"

    const-string/jumbo v2, "[100]"

    sget v3, Lcig$e;->emotion_123:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7202
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[KPI]"

    const-string/jumbo v2, "[KPI]"

    sget v3, Lcig$e;->emotion_137:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7203
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5bf9\u52fe]"

    const-string/jumbo v2, "[Check]"

    sget v3, Lcig$e;->emotion_124:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7205
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u611f\u8c22]"

    const-string/jumbo v2, "[Thanks]"

    sget v3, Lcig$e;->emotion_100:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7206
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7b11\u54ed]"

    const-string/jumbo v2, "[LaughAndCry]"

    sget v3, Lcig$e;->emotion_101:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7207
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u563f\u563f]"

    const-string/jumbo v2, "[Smirk]"

    sget v3, Lcig$e;->emotion_102:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7208
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6342\u8138\u54ed]"

    const-string/jumbo v2, "[Facepalm]"

    sget v3, Lcig$e;->emotion_103:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7209
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62a0\u9f3b]"

    const-string/jumbo v2, "[NosePick]"

    sget v3, Lcig$e;->emotion_104:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7210
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6d41\u9f3b\u8840]"

    const-string/jumbo v2, "[BloodyNose]"

    sget v3, Lcig$e;->emotion_105:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7211
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6572\u6253]"

    const-string/jumbo v2, "[Hammer]"

    sget v3, Lcig$e;->emotion_106:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7212
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8dea\u4e86]"

    const-string/jumbo v2, "[YouWin]"

    sget v3, Lcig$e;->emotion_107:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7214
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62b1\u62b1]"

    const-string/jumbo v2, "[Hug]"

    sget v3, Lcig$e;->emotion_108:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7215
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u644a\u624b]"

    const-string/jumbo v2, "[Smugshrug]"

    sget v3, Lcig$e;->emotion_109:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7216
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5472\u7259]"

    const-string/jumbo v2, "[Grin]"

    sget v3, Lcig$e;->emotion_110:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7217
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5403\u74dc]"

    const-string/jumbo v2, "[Eating melon]"

    sget v3, Lcig$e;->emotion_111:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7218
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5f69\u8679]"

    const-string/jumbo v2, "[Rainbow]"

    sget v3, Lcig$e;->emotion_112:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7219
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4e13\u6ce8]"

    const-string/jumbo v2, "[Concentrate]"

    sget v3, Lcig$e;->emotion_113:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7220
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4e8c\u54c8]"

    const-string/jumbo v2, "[Doggy]"

    sget v3, Lcig$e;->emotion_114:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7221
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u732b\u54aa]"

    const-string/jumbo v2, "[Kitty]"

    sget v3, Lcig$e;->emotion_115:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7222
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u72d7\u5b50]"

    const-string/jumbo v2, "[Puppy]"

    sget v3, Lcig$e;->emotion_116:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7223
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4e09\u591a]"

    const-string/jumbo v2, "[SanDuo]"

    sget v3, Lcig$e;->emotion_133:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7224
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8036]"

    const-string/jumbo v2, "[Yeah]"

    sget v3, Lcig$e;->emotion_117:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7225
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u53ef\u7231]"

    const-string/jumbo v2, "[Lovely]"

    sget v3, Lcig$e;->emotion_118:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7226
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6342\u773c\u775b]"

    const-string/jumbo v2, "[CannotLook]"

    sget v3, Lcig$e;->emotion_119:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7227
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u63a8\u773c\u955c]"

    const-string/jumbo v2, "[PushGlasses]"

    sget v3, Lcig$e;->emotion_120:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7228
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6697\u4e2d\u89c2\u5bdf]"

    const-string/jumbo v2, "[Peep]"

    sget v3, Lcig$e;->emotion_121:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7229
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8111\u66b4]"

    const-string/jumbo v2, "[Brainstorming]"

    sget v3, Lcig$e;->emotion_122:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7230
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u51b7\u7b11]"

    const-string/jumbo v2, "[Distressed]"

    sget v3, Lcig$e;->emotion_131:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7231
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5f00\u5fc3]"

    const-string/jumbo v2, "[Happy]"

    sget v3, Lcig$e;->emotion_132:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7232
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u60ca\u559c]"

    const-string/jumbo v2, "[Suprised]"

    sget v3, Lcig$e;->emotion_135:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7233
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u56de\u5934]"

    const-string/jumbo v2, "[LookBack]"

    sget v3, Lcig$e;->emotion_130:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7234
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u767d\u773c]"

    const-string/jumbo v2, "[RollEyes]"

    sget v3, Lcig$e;->emotion_128:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7235
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u4e00\u56e2\u4e71\u9ebb]"

    const-string/jumbo v2, "[Overwhelmed]"

    sget v3, Lcig$e;->emotion_136:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7236
    sget-object v6, Lcqz;->b:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6ee1\u8138\u95ee\u53f7]"

    const-string/jumbo v2, "[Confused]"

    sget v3, Lcig$e;->emotion_129:I

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7238
    sget-object v0, Lcqz;->a:Ljava/util/List;

    new-instance v1, Lcqz$b;

    const-string/jumbo v2, "ww"

    sget-object v3, Lcqz;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcqz;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcqz$b;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7240
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[CS]"

    const-string/jumbo v2, "[CS]"

    sget v3, Lcig$e;->emotion_080:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7241
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5b66\u4e60\u96f7\u950b]"

    const-string/jumbo v2, "[Leifeng]"

    sget v3, Lcig$e;->emotion_081:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7242
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5c0f\u4e8c]"

    const-string/jumbo v2, "[Service]"

    sget v3, Lcig$e;->emotion_082:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7243
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5e05\u54e5]"

    const-string/jumbo v2, "[Handsome]"

    sget v3, Lcig$e;->emotion_083:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7244
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u5f88\u665a\u4e86]"

    const-string/jumbo v2, "[Night]"

    sget v3, Lcig$e;->emotion_084:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7245
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u60b2\u6ce3]"

    const-string/jumbo v2, "[Cry]"

    sget v3, Lcig$e;->emotion_085:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7246
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u60ca\u58f0\u5c16\u53eb]"

    const-string/jumbo v2, "[ScaryMovie]"

    sget v3, Lcig$e;->emotion_086:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7247
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62b1\u62b1]"

    const-string/jumbo v2, "[Hug]"

    sget v3, Lcig$e;->emotion_087:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7248
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u62db\u8d22\u732b]"

    const-string/jumbo v2, "[FortuneCat]"

    sget v3, Lcig$e;->emotion_088:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7249
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u652f\u4ed8\u5b9d]"

    const-string/jumbo v2, "[Alipay]"

    sget v3, Lcig$e;->emotion_089:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7250
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u65f6\u949f]"

    const-string/jumbo v2, "[Clock]"

    sget v3, Lcig$e;->emotion_090:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7251
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u67e5\u627e]"

    const-string/jumbo v2, "[Searching]"

    sget v3, Lcig$e;->emotion_091:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7252
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6ca1\u94b1\u4e86]"

    const-string/jumbo v2, "[Poor]"

    sget v3, Lcig$e;->emotion_092:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7253
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u6f02\u4eaeMM]"

    const-string/jumbo v2, "[Pretty]"

    sget v3, Lcig$e;->emotion_093:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7254
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u76b1\u7709]"

    const-string/jumbo v2, "[Frown]"

    sget v3, Lcig$e;->emotion_094:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7255
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u7b49\u5f85]"

    const-string/jumbo v2, "[Waitting]"

    sget v3, Lcig$e;->emotion_095:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7256
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8d22\u795e]"

    const-string/jumbo v2, "[GodOfWealth]"

    sget v3, Lcig$e;->emotion_096:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7257
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8d2d\u7269]"

    const-string/jumbo v2, "[Shopping]"

    sget v3, Lcig$e;->emotion_097:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7258
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u94b1]"

    const-string/jumbo v2, "[Money]"

    sget v3, Lcig$e;->emotion_098:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7259
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u8272\u60c5\u72c2]"

    const-string/jumbo v2, "[Sexy]"

    sget v3, Lcig$e;->emotion_099:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7260
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u9634\u7b11]"

    const-string/jumbo v2, "[Trickster]"

    sget v3, Lcig$e;->emotion_018:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7261
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u90aa\u6076]"

    const-string/jumbo v2, "[Cunning]"

    sget v3, Lcig$e;->emotion_063:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7262
    sget-object v6, Lcqz;->c:Ljava/util/List;

    new-instance v0, Lcqz$a;

    const-string/jumbo v1, "[\u606d\u559c]"

    const-string/jumbo v2, "[Please]"

    sget v3, Lcig$e;->emotion_049:I

    sget-object v4, Lcqz;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcqz$a;-><init>(Ljava/lang/String;Ljava/lang/String;IIB)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8099
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u5fae\u7b11]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8100
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u5927\u7b11]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8101
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u8d5e]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8102
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[OK]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8103
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u6d41\u6cea]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8104
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u6d41\u6c57]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8105
    sget-object v0, Lcqz;->g:Ljava/util/List;

    const-string/jumbo v1, "[\u5c34\u5c2c]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcqz;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcqz;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcqz;->h:Ljava/util/HashMap;

    .line 91
    invoke-static {}, Lcqz;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcqz;->i:Ljava/util/regex/Pattern;

    .line 92
    invoke-static {}, Lcqz;->a()V

    .line 93
    sget-object v0, Lcqz;->f:Ljava/util/List;

    const-string/jumbo v1, "ww"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcqz;->f:Ljava/util/List;

    const-string/jumbo v1, "lxt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcqz;->f:Ljava/util/List;

    const-string/jumbo v1, "hongbao"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v0, Lcqz;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static a()V
    .locals 4

    .prologue
    .line 581
    sget-object v1, Lcqz;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "id":Lcqz$a;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "id":Lcqz$a;
    check-cast v0, Lcqz$a;

    .line 582
    .restart local v0    # "id":Lcqz$a;
    sget-object v2, Lcqz;->h:Ljava/util/HashMap;

    .line 1856
    iget-object v3, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 582
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 584
    :cond_0
    sget-object v1, Lcqz;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "id":Lcqz$a;
    check-cast v0, Lcqz$a;

    .line 585
    .restart local v0    # "id":Lcqz$a;
    sget-object v2, Lcqz;->h:Ljava/util/HashMap;

    .line 2856
    iget-object v3, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 585
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 587
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 663
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    const/4 v1, 0x0

    .line 667
    :goto_0
    return v1

    .line 666
    :cond_0
    sget-object v1, Lcqz;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 667
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcqz$a;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 632
    sget-object v0, Lcqz;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    return-object v0
.end method

.method private static b()Ljava/util/regex/Pattern;
    .locals 5

    .prologue
    const/16 v4, 0x7c

    .line 591
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 592
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 593
    sget-object v2, Lcqz;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    .line 3856
    .local v0, "id":Lcqz$a;
    iget-object v3, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 594
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 595
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 597
    .end local v0    # "id":Lcqz$a;
    :cond_0
    sget-object v2, Lcqz;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    .line 4856
    .restart local v0    # "id":Lcqz$a;
    iget-object v3, v0, Lcqz$a;->a:Ljava/lang/String;

    .line 598
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 599
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 601
    .end local v0    # "id":Lcqz$a;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v3

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->replace(IILjava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 602
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    return-object v2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 642
    sget-object v2, Lcqz;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    .line 643
    .local v0, "identifier":Lcqz$a;
    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-object v1

    .line 5819
    :cond_1
    iget-object v2, v0, Lcqz$a;->e:Ljava/lang/String;

    .line 646
    if-eqz v2, :cond_0

    .line 6819
    iget-object v1, v0, Lcqz$a;->e:Ljava/lang/String;

    goto :goto_0
.end method

.class public final Ltg;
.super Ljava/lang/Object;
.source "CSpaceCreatorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltg$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltg;->a:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltg;->b:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ltg$1;

    invoke-direct {v0, p0}, Ltg$1;-><init>(Ltg;)V

    iput-object v0, p0, Ltg;->c:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 7
    .param p0, "creatorEmail"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 169
    :goto_0
    return-wide v4

    .line 154
    :cond_0
    :try_start_0
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    const-string/jumbo v6, "@"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "indexEnd":I
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, "indexStart":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "uid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 159
    .end local v1    # "indexEnd":I
    .end local v2    # "indexStart":I
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    const-string/jumbo v6, "_"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 161
    .restart local v1    # "indexEnd":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "uid":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 164
    .end local v1    # "indexEnd":I
    .end local v3    # "uid":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class Lcom/taobao/android/runtime/VMUtil;
.super Ljava/lang/Object;
.source "VMUtil.java"


# static fields
.field static final IS_VM_ART:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VM_WITH_ART_VERSION_MAJOR:I = 0x2

.field private static final VM_WITH_ART_VERSION_MINOR:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/taobao/android/runtime/VMUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/runtime/VMUtil;->TAG:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/runtime/VMUtil;->isVMART(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/taobao/android/runtime/VMUtil;->IS_VM_ART:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static isVMART(Ljava/lang/String;)Z
    .locals 7
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "isART":Z
    if-eqz p0, :cond_1

    .line 26
    const-string/jumbo v5, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 27
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 30
    .local v1, "major":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 31
    .local v3, "minor":I
    if-gt v1, v6, :cond_0

    if-ne v1, v6, :cond_2

    if-lez v3, :cond_2

    :cond_0
    move v0, v4

    .line 39
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "VM with version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    const-string/jumbo v4, " has ART support"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return v0

    .line 31
    .restart local v1    # "major":I
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "minor":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_3
    const-string/jumbo v4, " does not have ART support"

    goto :goto_1

    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

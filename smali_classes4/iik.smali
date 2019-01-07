.class public final Liik;
.super Ljava/lang/Object;
.source "FocusWhiteList.java"


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 24
    sput-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/Redmi Note 4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/Redmi Note 3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/Redmi Note 2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/Redmi 3S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/MI NOTE Pro"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/MI 5"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Xiaomi/MI MAX"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "HUAWEI/HUAWEI P8max"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "HUAWEI/CUN-AL00"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "HUAWEI/Nexus 6P"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "LeEco/Le X620"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Meizu/M685C"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Meizu/MX6"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Meizu/m3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "vivo/vivo Xplay6"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "vivo/vivo Y51A"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "vivo/vivo X6D"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "lge/LG-H990"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "GiONEE/GN5001S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "GIONEE/GN5005"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "nubia/NX531J"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "samsung/SM-A8000"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "samsung/SM-G5500"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "samsung/SM-G5700"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "samsung/SM-G6000"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "Letv/Letv X501"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "LeMobile/Le X620"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "LeMobile/Le X820"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "motorola/XT1650-05"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Liik;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "google/Pixel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "brand"    # Ljava/lang/String;
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v3, Liik;->a:Ljava/util/HashSet;

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "modelSign":Ljava/lang/String;
    sget-object v3, Liik;->a:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    .local v0, "contained":Z
    const-string/jumbo v3, "FocusWhiteList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Continue Focus Contained("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-nez v0, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

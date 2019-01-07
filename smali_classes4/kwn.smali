.class public final Lkwn;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Hashtable;

.field static final b:Ljava/util/Hashtable;

.field static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkwn;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkwn;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkwn;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Llau$b;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "166"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Lkyx;

    new-instance v3, Llax$b;

    new-instance v4, Llav$b;

    .line 1000
    iget-object v5, v2, Llau$b;->c:Ljava/math/BigInteger;

    .line 0
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Llav$b;

    .line 2000
    iget-object v6, v2, Llau$b;->c:Ljava/math/BigInteger;

    .line 0
    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v4, v5}, Llax$b;-><init>(Llau;Llav;Llav;)V

    invoke-direct {v0, v2, v3, v1}, Lkyx;-><init>(Llau;Llax;Ljava/math/BigInteger;)V

    sget-object v1, Lkwn;->b:Ljava/util/Hashtable;

    sget-object v2, Lkwm;->o:Lkvn;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "115792089237316195423570985008687907853269984665640564039457584007913129639319"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "115792089237316195423570985008687907853073762908499243225378155805079068850323"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Llau$b;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "115792089237316195423570985008687907853269984665640564039457584007913129639316"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "166"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Lkyx;

    new-instance v3, Llax$b;

    new-instance v4, Llav$b;

    .line 3000
    iget-object v5, v2, Llau$b;->c:Ljava/math/BigInteger;

    .line 0
    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Llav$b;

    .line 4000
    iget-object v6, v2, Llau$b;->c:Ljava/math/BigInteger;

    .line 0
    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "64033881142927202683649881450433473985931760268884941288852745803908878638612"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v4, v5}, Llax$b;-><init>(Llau;Llav;Llav;)V

    invoke-direct {v0, v2, v3, v1}, Lkyx;-><init>(Llau;Llax;Ljava/math/BigInteger;)V

    sget-object v1, Lkwn;->b:Ljava/util/Hashtable;

    sget-object v2, Lkwm;->r:Lkvn;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "57896044618658097711785492504343953926634992332820282019728792003956564823193"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "57896044618658097711785492504343953927102133160255826820068844496087732066703"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Llau$b;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "57896044618658097711785492504343953926634992332820282019728792003956564823190"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "28091019353058090096996979000309560759124368558014865957655842872397301267595"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Lkyx;

    new-instance v4, Llax$b;

    new-instance v5, Llav$b;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Llav$b;

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "28792665814854611296992347458380284135028636778229113005756334730996303888124"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0, v7}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v2, v5, v6}, Llax$b;-><init>(Llau;Llav;Llav;)V

    invoke-direct {v3, v2, v4, v1}, Lkyx;-><init>(Llau;Llax;Ljava/math/BigInteger;)V

    sget-object v0, Lkwn;->b:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->p:Lkvn;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Llau$b;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "32858"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Lkyx;

    new-instance v4, Llax$b;

    new-instance v5, Llav$b;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Llav$b;

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0, v7}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v2, v5, v6}, Llax$b;-><init>(Llau;Llav;Llav;)V

    invoke-direct {v3, v2, v4, v1}, Lkyx;-><init>(Llau;Llax;Ljava/math/BigInteger;)V

    sget-object v0, Lkwn;->b:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->s:Lkvn;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "70390085352083305199547718019018437841079516630045180471284346843705633502619"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "70390085352083305199547718019018437840920882647164081035322601458352298396601"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Llau$b;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "70390085352083305199547718019018437841079516630045180471284346843705633502616"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "32858"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Lkyx;

    new-instance v4, Llax$b;

    new-instance v5, Llav$b;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Llav$b;

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v8, "29818893917731240733471273240314769927240550812383695689146495261604565990247"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0, v7}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v2, v5, v6}, Llax$b;-><init>(Llau;Llav;Llav;)V

    invoke-direct {v3, v2, v4, v1}, Lkyx;-><init>(Llau;Llax;Ljava/math/BigInteger;)V

    sget-object v0, Lkwn;->b:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->q:Lkvn;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "GostR3410-2001-CryptoPro-A"

    sget-object v2, Lkwm;->o:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "GostR3410-2001-CryptoPro-B"

    sget-object v2, Lkwm;->p:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "GostR3410-2001-CryptoPro-C"

    sget-object v2, Lkwm;->q:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "GostR3410-2001-CryptoPro-XchA"

    sget-object v2, Lkwm;->r:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    const-string/jumbo v1, "GostR3410-2001-CryptoPro-XchB"

    sget-object v2, Lkwm;->s:Lkvn;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->o:Lkvn;

    const-string/jumbo v2, "GostR3410-2001-CryptoPro-A"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->p:Lkvn;

    const-string/jumbo v2, "GostR3410-2001-CryptoPro-B"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->q:Lkvn;

    const-string/jumbo v2, "GostR3410-2001-CryptoPro-C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->r:Lkvn;

    const-string/jumbo v2, "GostR3410-2001-CryptoPro-XchA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    sget-object v1, Lkwm;->s:Lkvn;

    const-string/jumbo v2, "GostR3410-2001-CryptoPro-XchB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lkyx;
    .locals 2

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvn;

    if-eqz v0, :cond_0

    sget-object v1, Lkwn;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkyx;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lkvn;)Lkyx;
    .locals 1

    sget-object v0, Lkwn;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkyx;

    return-object v0
.end method

.method public static b(Lkvn;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lkwn;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lkvn;
    .locals 1

    sget-object v0, Lkwn;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvn;

    return-object v0
.end method

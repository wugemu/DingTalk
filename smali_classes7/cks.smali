.class public final Lcks;
.super Ljava/lang/Object;
.source "LunarFestivalInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "gregorianForeignFestival"    # Ljava/lang/String;
    .param p2, "gregorianChineseFestival"    # Ljava/lang/String;
    .param p3, "gregorianMalaysiaFestival"    # Ljava/lang/String;
    .param p4, "gregorianIndianFestival"    # Ljava/lang/String;
    .param p5, "solarTerm"    # Ljava/lang/String;
    .param p6, "lunarData"    # Ljava/lang/String;
    .param p7, "LunarFestival"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcks;->e:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcks;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcks;->f:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcks;->g:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcks;->b:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcks;->c:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcks;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

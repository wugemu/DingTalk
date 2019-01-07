.class public abstract Lhmy;
.super Lhna;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhmy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhna",
        "<",
        "Lhmy;",
        "Lhmy$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lhna;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson/JSONObject;)Lhmy;
    .locals 0
    .param p1, "formData"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 23
    iput-object p1, p0, Lhmy;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 24
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lhmy;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lhmy;->a:Ljava/lang/String;

    .line 14
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lhmy;
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lhmy;->b:Ljava/lang/String;

    .line 19
    return-object p0
.end method

.class public final Lgwz;
.super Ljava/lang/Object;
.source "TargetObject.java"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lgwz;->a:Lorg/json/JSONObject;

    .line 12
    iput-object p1, p0, Lgwz;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

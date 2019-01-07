.class public final Lcqy;
.super Lcrd;
.source "DynamicEmotionIdentifier.java"


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "englishKey"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Lcrd;-><init>()V

    .line 10
    iput-object p1, p0, Lcqy;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcqy;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcqy;->c:Ljava/lang/String;

    .line 13
    iput p4, p0, Lcqy;->d:I

    .line 14
    return-void
.end method


# virtual methods
.method public final getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcqy;->a:Ljava/lang/String;

    return-object v0
.end method

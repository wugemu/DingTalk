.class public Lcom/alibaba/android/user/model/RealVerifyMaterialObject;
.super Ljava/lang/Object;
.source "RealVerifyMaterialObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7eb4acda0d6384f8L


# instance fields
.field public biometric:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public handGesture:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public identityBackPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public identityFrontPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public identityInHand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public upperBodyPic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Lfqa;)Lcom/alibaba/android/user/model/RealVerifyMaterialObject;
    .locals 2
    .param p0, "model"    # Lfqa;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "object":Lcom/alibaba/android/user/model/RealVerifyMaterialObject;
    if-eqz p0, :cond_0

    .line 58
    new-instance v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;

    .end local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyMaterialObject;
    invoke-direct {v0}, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;-><init>()V

    .line 59
    .restart local v0    # "object":Lcom/alibaba/android/user/model/RealVerifyMaterialObject;
    iget-object v1, p0, Lfqa;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->name:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lfqa;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->code:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lfqa;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityFrontPic:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lfqa;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityBackPic:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lfqa;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->upperBodyPic:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lfqa;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->biometric:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lfqa;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->handGesture:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lfqa;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityInHand:Ljava/lang/String;

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toIDL()Lfqa;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    new-instance v0, Lfqa;

    invoke-direct {v0}, Lfqa;-><init>()V

    .line 73
    .local v0, "model":Lfqa;
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->a:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->code:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->b:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityFrontPic:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->c:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityBackPic:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->d:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->upperBodyPic:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->e:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->biometric:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->f:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->handGesture:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->g:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/user/model/RealVerifyMaterialObject;->identityInHand:Ljava/lang/String;

    iput-object v1, v0, Lfqa;->h:Ljava/lang/String;

    .line 81
    return-object v0
.end method

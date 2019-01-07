.class public Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
.super Ljava/lang/Object;
.source "CardExtensionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x76098b540a205828L


# instance fields
.field public cardAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public initedCard:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcgq;)Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    .locals 3
    .param p0, "model"    # Lcgq;

    .prologue
    const/4 v2, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;-><init>()V

    .line 73
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;
    iget-object v1, p0, Lcgq;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->corpId:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcgq;->a:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 74
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->nameAuthed:Z

    .line 75
    iget-object v1, p0, Lcgq;->b:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 75
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthed:Z

    .line 76
    iget-object v1, p0, Lcgq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgToken:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcgq;->c:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 77
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->titleAuthed:Z

    .line 78
    iget-object v1, p0, Lcgq;->f:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 78
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->initedCard:Z

    .line 79
    iget-object v1, p0, Lcgq;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgLogo:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcgq;->h:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 80
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthLevel:I

    .line 81
    iget-object v1, p0, Lcgq;->i:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 81
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->cardAuthed:Z

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcgq;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcgq;

    invoke-direct {v0}, Lcgq;-><init>()V

    .line 87
    .local v0, "model":Lcgq;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lcgq;->e:Ljava/lang/String;

    .line 88
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->nameAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgq;->a:Ljava/lang/Boolean;

    .line 89
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgq;->b:Ljava/lang/Boolean;

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgToken:Ljava/lang/String;

    iput-object v1, v0, Lcgq;->d:Ljava/lang/String;

    .line 91
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->titleAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgq;->c:Ljava/lang/Boolean;

    .line 92
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->initedCard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgq;->f:Ljava/lang/Boolean;

    .line 93
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgLogo:Ljava/lang/String;

    iput-object v1, v0, Lcgq;->g:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgq;->h:Ljava/lang/Integer;

    .line 95
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->cardAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgq;->i:Ljava/lang/Boolean;

    .line 96
    return-object v0
.end method

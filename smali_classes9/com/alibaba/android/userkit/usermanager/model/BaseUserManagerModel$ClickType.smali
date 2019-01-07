.class public final enum Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
.super Ljava/lang/Enum;
.source "BaseUserManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

.field public static final enum AddButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

.field public static final enum DeleteButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

.field public static final enum DeptItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

.field public static final enum UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    const-string/jumbo v1, "AddButton"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->AddButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 27
    new-instance v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    const-string/jumbo v1, "DeleteButton"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeleteButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 28
    new-instance v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    const-string/jumbo v1, "UserItem"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 29
    new-instance v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    const-string/jumbo v1, "DeptItem"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeptItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    sget-object v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->AddButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeleteButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeptItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->$VALUES:[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->mValue:I

    .line 35
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 60
    .local v0, "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    :goto_0
    return-object v0

    .line 45
    .end local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->AddButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 46
    .restart local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    goto :goto_0

    .line 48
    .end local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeleteButton:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 49
    .restart local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    goto :goto_0

    .line 51
    .end local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->UserItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 52
    .restart local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    goto :goto_0

    .line 54
    .end local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->DeptItem:Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    .line 55
    .restart local v0    # "type":Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->$VALUES:[Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    invoke-virtual {v0}, [Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/userkit/usermanager/model/BaseUserManagerModel$ClickType;->mValue:I

    return v0
.end method
